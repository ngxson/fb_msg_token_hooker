.class public Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;
.super Ljava/lang/Object;
.source "AuthExpireSessionMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;->a(Ljava/lang/Void;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Void;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "logout"

    const-string v2, "POST"

    const-string v3, "method/auth.expireSession"

    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;->a(Ljava/lang/Void;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Void;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
