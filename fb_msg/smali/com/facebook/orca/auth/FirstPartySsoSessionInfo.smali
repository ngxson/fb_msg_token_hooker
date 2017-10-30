.class public Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;
.super Ljava/lang/Object;
.source "FirstPartySsoSessionInfo.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;->c:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;->c:Ljava/lang/String;

    return-object v0
.end method
