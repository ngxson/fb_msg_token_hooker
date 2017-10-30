.class public Lcom/facebook/orca/push/FriendInstallNotification;
.super Ljava/lang/Object;
.source "FriendInstallNotification.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/orca/push/PushSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/push/PushSource;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/push/FriendInstallNotification;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/push/FriendInstallNotification;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/facebook/orca/push/FriendInstallNotification;->c:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/facebook/orca/push/FriendInstallNotification;->d:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/facebook/orca/push/FriendInstallNotification;->e:Lcom/facebook/orca/push/PushSource;

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/push/FriendInstallNotification;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 18
    const-string v1, "i_id"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :cond_1
    const-string v1, "i_id"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 25
    new-instance v0, Lcom/facebook/orca/push/FriendInstallNotification;

    sget-object v5, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/push/FriendInstallNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/push/FriendInstallNotification;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/push/FriendInstallNotification;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/push/FriendInstallNotification;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/push/FriendInstallNotification;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/facebook/orca/push/PushSource;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/push/FriendInstallNotification;->e:Lcom/facebook/orca/push/PushSource;

    return-object v0
.end method
