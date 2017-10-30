.class public Lcom/facebook/orca/database/DbUsersPropertyUtil;
.super Lcom/facebook/orca/database/DbPropertyUtil;
.source "DbUsersPropertyUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/database/DbPropertyUtil",
        "<",
        "Lcom/facebook/orca/database/DbUserPropertyKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/orca/database/UsersDatabaseSupplier;)V
    .locals 1
    .parameter

    .prologue
    .line 11
    const-string v0, "user_db_properties"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/database/DbPropertyUtil;-><init>(Lcom/google/common/base/Supplier;Ljava/lang/String;)V

    .line 12
    return-void
.end method
