.class Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;
.super Ljava/lang/Object;
.source "SingleMethodRunner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/protocol/base/SingleMethodRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;->a:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    check-cast p1, Lorg/apache/http/NameValuePair;

    check-cast p2, Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;->a(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I

    move-result v0

    return v0
.end method
