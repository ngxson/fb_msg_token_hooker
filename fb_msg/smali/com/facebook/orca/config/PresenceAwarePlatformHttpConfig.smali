.class public Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;
.super Lcom/facebook/orca/config/SimplePlatformAppHttpConfig;
.source "PresenceAwarePlatformHttpConfig.java"


# instance fields
.field private final a:Lcom/facebook/app/UserActivityManager;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/app/UserActivityManager;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/config/SimplePlatformAppHttpConfig;-><init>(Ljava/lang/String;Z)V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;->a:Lcom/facebook/app/UserActivityManager;

    .line 20
    iput-object p4, p0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;->b:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FBBK/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;->c:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;->a:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v0}, Lcom/facebook/app/UserActivityManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;->c:Ljava/lang/String;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;->b:Ljava/lang/String;

    goto :goto_0
.end method
