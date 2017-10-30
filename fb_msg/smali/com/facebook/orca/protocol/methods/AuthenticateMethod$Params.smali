.class public Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;
.super Ljava/lang/Object;
.source "AuthenticateMethod.java"


# instance fields
.field private final a:Lcom/facebook/orca/auth/PasswordCredentials;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/PasswordCredentials;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;->a:Lcom/facebook/orca/auth/PasswordCredentials;

    .line 33
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;)Lcom/facebook/orca/auth/PasswordCredentials;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;->a:Lcom/facebook/orca/auth/PasswordCredentials;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;->b:Ljava/lang/String;

    return-object v0
.end method
