.class public Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;
.super Ljava/lang/Object;
.source "RemoveMemberMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/RemoveMemberParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/auth/AuthDataStore;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;->a:Lcom/facebook/orca/auth/AuthDataStore;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/RemoveMemberParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/server/RemoveMemberParams;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only unsubscribe the user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 37
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/facebook/orca/server/RemoveMemberParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "removeMembers"

    const-string v2, "DELETE"

    const-string v3, "/participants"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/orca/server/RemoveMemberParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;->a(Lcom/facebook/orca/server/RemoveMemberParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/orca/server/RemoveMemberParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;->a(Lcom/facebook/orca/server/RemoveMemberParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/RemoveMemberParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->e()V

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
